cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.39,2026-03"
  sha256 arm:   "3f59b7088f78b865215ff04cf57d2a2b8def175965b0cb1c22b0cbe75abda7f8",
         intel: "d306dfcb72773ae558e9ff0d9631b37691a8b9494ce79719124df8ea6c302239"

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

  depends_on macos: ">= :big_sur"

  app "Eclipse.app"

  zap trash: "~/Library/Preferences/epp.package.committers.plist"
end
