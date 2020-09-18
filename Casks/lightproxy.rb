cask "lightproxy" do
  version "1.1.38"
  sha256 "f576fae36ce6b25efca5fa53fbd1f13e3c593e60641d26f64a00b8b2fc4b9b5b"

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
