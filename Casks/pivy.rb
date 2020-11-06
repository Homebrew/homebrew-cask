cask "pivy" do
  version "0.2.1"
  sha256 "d66ed12c55b166c769623c56383237c15a9d27c2504d6c3045104e59e77f189c"

  url "https://github.com/joyent/pivy/releases/download/v#{version}/pivy-#{version}.pkg"
  appcast "https://github.com/joyent/pivy/releases.atom"
  name "pivy"
  homepage "https://github.com/joyent/pivy"

  pkg "pivy-#{version}.pkg"

  uninstall pkgutil:   "net.cooperi.pivy",
            launchctl: "net.cooperi.pivy-agent",
            quit:      "net.cooperi.pivy-agent"

  caveats "The installer will prompt you to insert a YubiKey or other PIV token via a dialog box."
end
