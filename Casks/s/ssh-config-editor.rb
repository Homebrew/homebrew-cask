cask "ssh-config-editor" do
  version "2.6.10,111"
  sha256 "f50430e07b443ef22d6af0b9555e871ca6d4026c9bd066173bb32ecf91f32a4a"

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
