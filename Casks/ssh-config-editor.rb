cask "ssh-config-editor" do
  version "2.3,88"
  sha256 "88a938cb2b24b2106d080ed64b3fc037db7a5cee8ffec12cfa08a0132c1181ff"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.dmg"
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
