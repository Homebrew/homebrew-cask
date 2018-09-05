cask 'honto' do
  version :latest
  sha256 :no_check

  url 'https://dl.honto.jp/macapp/honto.dmg'
  name 'honto view app'
  name 'hontoビューアアプリ'
  homepage 'https://honto.jp/ebook/dlinfo.html'

  app 'honto.app'
end
