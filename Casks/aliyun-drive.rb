cask "aliyun-drive" do
  version "2.1.7"
  sha256 "866cdb782f42d40c528e4cd20f4e05198371472a54229d583a9881b98c2b9437"

  url "https://yunpan.aliyun.com/downloads/apps/desktop/aDrive.dmg?spm=aliyundrive.index.#{version}d836020peqkzq&file=aDrive.dmg"
  name "aliyun-drive"
  desc "阿里云盘"
  homepage "https://yunpan.aliyun.com/"

  app "aDrive.app"
end
