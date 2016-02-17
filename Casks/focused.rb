cask 'focused' do
  version :latest
  sha256 :no_check

  # devmate.com/com.71squared.focused was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.71squared.focused/Focused.zip'
  name 'Focused'
  homepage 'https://71squared.com/focused'
  license :commercial

  app 'Focused.app'
end
