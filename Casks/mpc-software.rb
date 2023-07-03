cask "mpc-software" do
  version "2.12.1.35"
  sha256 "4619858980c148d31038fc9e352ad7b08b524c646242dfc56dd543914c2a56da"

  url "https://cdn.inmusicbrands.com/akai/MPC2/2121_sufbchdj/Install-MPC-v2.12-#{version}-release-Mac.zip",
      verified: "cdn.inmusicbrands.com/akai/MPC2/"
  name "mpc-software"
  desc "Composition software (DAW) from Akai"
  homepage "https://www.akaipro.com/mpc-software-2"

  livecheck do
    url "https://www.akaipro.com/mpc-software-2"
    strategy :page_match do |page|
      match = page.match(%r{href="https://cdn.inmusicbrands.com/akai/MPC2/[\d_\w]+/Install-MPC-v([\d.]+)-([\d.]+)-release-Mac.zip"}i)
      next if match.blank?

      match[2]
    end
  end

  app "Install MPC 2.12.1.35.app/Contents/Resources/InstallApp.pkg"
end
