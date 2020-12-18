cask "lightproxy" do
  version "1.1.40"
  sha256 "601c3dc7795e33a0007fe70ffd0a2acbf92f0197537e854d988fb86f023e3202"

  url "https://github.com/alibaba/lightproxy/releases/download/v#{version}/LightProxy-#{version}.dmg",
      verified: "github.com/alibaba/lightproxy/"
  appcast "https://github.com/alibaba/lightproxy/releases.atom"
  name "LightProxy"
  desc "Proxy & Debug tools based on whistle with Chrome Devtools UI"
  homepage "https://alibaba.github.io/lightproxy/"

  app "LightProxy.app"

  uninstall_postflight do
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "LigthProxy", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    hashes.each do |h|
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", h],
                     sudo: true
    end
  end
end
