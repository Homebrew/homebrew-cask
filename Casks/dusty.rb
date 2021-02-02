cask "dusty" do
  version "0.7.6-RC2"
  sha256 "41780af5a0c84ec254ab875554eb2a41e201c3b6078e7e3f2e9cf0f62f46a4be"

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast "https://github.com/gamechanger/dusty/releases.atom"
  name "Dusty"
  homepage "https://github.com/gamechanger/dusty"

  depends_on cask: "docker-toolbox"
  container type: :tar

  installer script: {
    executable: "brew-install.sh",
    args:       [staged_path],
    sudo:       true,
  }
  binary "dusty"

  uninstall launchctl: "com.gamechanger.dusty"

  zap trash: "/etc/dusty"
end
