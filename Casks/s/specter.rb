cask "specter" do
  version "2.0.5"
  sha256 "2419d08e0cc32c6c1e8d7f09af90e4e867d786bc51ee238f62ff741785caccc3"

  url "https://github.com/cryptoadvance/specter-desktop/releases/download/v#{version}/Specter-v#{version}.dmg",
      verified: "github.com/cryptoadvance/specter-desktop/"
  name "Specter"
  desc "Desktop GUI for Bitcoin Core optimised to work with hardware wallets"
  homepage "https://specter.solutions/"

  # Upstream doesn't reliably mark unstable versions as pre-release on GitHub.
  # The first-party download page uses JavaScript to handle the download links,
  # so we have to check the related JS file for the URL of the latest stable
  # file on GitHub.
  livecheck do
    url "https://specter.solutions/downloads/"
    regex(/Specter[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      js_file_name = page[%r{src=["']?/assets/(index[._-]\w+\.js)}i, 1]
      next unless js_file_name

      js_file = Homebrew::Livecheck::Strategy.page_content(
        "https://specter.solutions/assets/#{js_file_name}",
      )[:content]
      next if js_file.blank?

      js_file.scan(regex).map { |match| match[0] }
    end
  end

  app "Specter.app"

  zap trash: [
    "~/Library/Application Support/specter-desktop",
    "~/Library/Preferences/solutions.specter.desktop.plist",
    "~/Library/Saved Application State/solutions.specter.desktop.savedState",
  ]
end
