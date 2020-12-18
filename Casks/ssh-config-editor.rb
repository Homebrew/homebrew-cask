cask "ssh-config-editor" do
  version "2.1.1,72"
  sha256 "d5f55802cde1531455a4f871e5c45b345418ef5b03b3c58074c6aee3779c6601"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.dmg"
  appcast "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  depends_on macos: ">= :catalina"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
