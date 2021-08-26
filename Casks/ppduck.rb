cask "ppduck" do
  version "3.10.11"
  sha256 "294335e27a3af4ce65392fa350cd4042ca040b84d2e7de6814bdb1cb2fc647d7"

  url "https://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name "PPDuck"
  desc "PP鸭整合了业内最优秀的数种开源的图片压缩算法，会自动根据图片特征自动选择压缩参数。只需要将图片拖入PP鸭，就能自动批量压缩，省时省心。"
  homepage "https://www.ppduck.com/"

  app "PPDuck#{version.major}.app"
end
