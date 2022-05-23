cask "ssh-config-editor" do
  version "2.4,93"
  sha256 "8d2daac4092540a4e7e7049255c88b175637edbb4339b12ab160ec195222e4cd"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.csv.second}.dmg"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  livecheck do
    url "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
