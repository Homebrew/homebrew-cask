cask "font-dinish" do
  version "4.007"
  sha256 "a75d47e600aa9e522da59f760c269aad617b097f9eb11c9be41c1b357f9d2b3d"

  url "https://github.com/playbeing/dinish/releases/download/v#{version}/dinish-ttf.zip"
  name "DINish"
  homepage "https://github.com/playbeing/dinish"

  font "DINish[slnt,wdth,wght].ttf"

  zap :not_required
end
