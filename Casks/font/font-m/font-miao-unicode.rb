cask "font-miao-unicode" do
  version :latest
  sha256 :no_check

  url "https://github.com/phjamr/MiaoUnicode/blob/master/MiaoUnicode-Regular.ttf?raw=true"
  name "MiaoUnicode"
  homepage "https://phjamr.github.io/miao.html"

  font "MiaoUnicode-Regular.ttf"

  zap :not_required
end
