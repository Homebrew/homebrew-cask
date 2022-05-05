cask "prismatik" do
  version "6.0.0.104"
  sha256 "72e94944f9732ab737836a399a6f92693d1dd1717e0bef0cae3d96654b1dd2af"

  url "https://woodenshark.com/4lightpack/Prismatik_#{version}_signed.dmg",
      verified: "woodenshark.com/4lightpack/"
  name "Prismatik"
  homepage "https://lightpack.tv/pages/downloads"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Prismatik_(\d+(?:\.\d+)*)_signed\.dmg}i)
  end

  app "Prismatik.app"
end
