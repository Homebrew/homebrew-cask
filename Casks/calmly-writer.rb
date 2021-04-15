cask "calmly-writer" do
  version "2.0.25"
  sha256 "92223bc82ca7af4718f41097edfa85da724f59b87b1a75d01a92db995325d48e"

  url "https://www.calmlywriter.com/releases/arm64/Calmly%20Writer-#{version}.pkg"
  name "Calmly Writer"
  desc "Simple word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/x64/download.php"
    strategy :header_match
  end

  pkg "Calmly Writer-#{version}.pkg"

  uninstall pkgutil: "Calmly Writer-#{version}.pkg"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
  
end
