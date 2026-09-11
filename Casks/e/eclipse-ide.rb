cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.41,2026-09"
  sha256 arm:   "940fa9fe7feee5d3cbb3aff3904944d81a5fadbefc48d069881f7e5073e5ebd1",
         intel: "f23deb3cf27c1d636c2fc656c7addc4458c695be7d0dea5ab0c9c08369457f06"

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

  depends_on :macos

  app "Eclipse.app"

  zap trash: "~/Library/Preferences/epp.package.committers.plist"
end
