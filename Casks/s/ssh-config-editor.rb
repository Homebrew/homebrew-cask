cask "ssh-config-editor" do
  version "2.6.11,112"
  sha256 "cf73dcea2b6b52185ef4438f3b0911d96b11cc03896a0d60524e18d481932fd7"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.csv.second}.dmg"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  livecheck do
    url "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
