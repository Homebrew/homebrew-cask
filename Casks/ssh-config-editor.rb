cask "ssh-config-editor" do
  version "2.0,65"
  sha256 "6a1b5acbf3577e7092dc61b5e474b2a9c4dd10d83eb2ccfc42c78b1608bb4b28"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.zip"
  appcast "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
