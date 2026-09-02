cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.40,2026-06"
  sha256 arm:   "069e2418aa5faffd443516b0c147ad9f6453d6b4fc70e5209bd01b3673e48b53",
         intel: "fa57f507844b7be46d1c1775f150c4edd77850d5e34f6eddbd104d36acec785e"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-committers-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  desc "Eclipse integrated development environment"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://download.eclipse.org/eclipse/downloads/data.json"
    regex(/href=.*?eclipse-committers-(\d+-\d+)-R-mac/i)
    strategy :json do |json, regex|
      versions = json["releases"]&.filter_map { |release| release["label"] }&.uniq
      version = versions.max_by { |v| Version.new(v) }
      next unless version

      download_page = Homebrew::Livecheck::Strategy.page_content(
        "https://www.eclipse.org/downloads/packages/",
      )[:content]
      next if download_page.blank?

      date = download_page[regex, 1]
      next unless date

      "#{version},#{date}"
    end
  end

  depends_on macos: :big_sur

  app "Eclipse.app"

  zap trash: "~/Library/Preferences/epp.package.committers.plist"
end
