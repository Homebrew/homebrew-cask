cask "google-web-designer" do
  version "12.2.0.0"
  sha256 :no_check

  url "https://dl.google.com/webdesigner/mac/shell/googlewebdesigner_mac.dmg"
  name "Google Web Designer"
  desc "Create interactive HTML5-based designs and motion graphics"
  homepage "https://www.google.com/webdesigner/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Google Web Designer.app"

  zap trash: [
        "~/Documents/Google Web Designer",
        "~/Library/Application Support/Google/Web Designer",
        "~/Library/Google/GoogleSoftwareUpdate/Actives/com.google.WebDesigner",
        "~/Library/Preferences/com.google.WebDesigner.plist",
        "~/Library/Saved Application State/com.google.WebDesigner.savedState",
      ],
      rmdir: "~/Library/Google"
end
