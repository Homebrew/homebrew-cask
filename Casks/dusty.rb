cask "dusty" do
  version "0.7.5"
  sha256 "9e6cb17530053ffa7ba75bd4fd2b5840dc6508bd1d70166f3e6179ed30f5f721"

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
