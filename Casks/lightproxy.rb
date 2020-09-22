cask "lightproxy" do
  version "1.1.39"
  sha256 "9a76a5a337347f489157aaaa4e5d3bb1ae495ec7792a06a717e06c82cdb1a745"

  # github.com/alibaba/lightproxy/ was verified as official when first introduced to the cask
  url "https://github.com/alibaba/lightproxy/releases/download/v#{version}/LightProxy-#{version}.dmg"
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
