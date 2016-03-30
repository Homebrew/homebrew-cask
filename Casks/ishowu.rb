cask 'ishowu' do
  version :latest
  sha256 :no_check

  url 'https://www.shinywhitebox.com/store/file.php?p=1'
  name 'iShowU'
  homepage 'https://www.shinywhitebox.com/ishowu'
  license :commercial

  app 'iShowU.app'
end
