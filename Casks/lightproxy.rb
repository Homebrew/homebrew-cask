cask "lightproxy" do
  version "1.1.32"
  sha256 "79e07aa41c8bfbf7bcaa5265f7bef389b81d41cf59172b8a7f8a1ad95a2a17db"

  # github.com/alibaba/lightproxy/ was verified as official when first introduced to the cask
  url "https://github.com/alibaba/lightproxy/releases/download/v#{version}/LightProxy-#{version}.dmg"
  appcast "https://github.com/alibaba/lightproxy/releases.atom"
  name "LightProxy"
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
