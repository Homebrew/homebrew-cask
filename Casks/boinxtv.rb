cask 'boinxtv' do
  version '1.9.11-17138'
  sha256 'ae9b4e245172665e198313ef7bbf46289fd56795258a49b7b9b05727a2d62f21'

  url "https://cdn.boinx.com/software/boinxtv/Boinx_BoinxTV_#{version}.app.zip"
  name 'BoinxTV'
  homepage 'https://boinx.com/boinxtv/'

  depends_on macos: '>= :lion'

  app 'BoinxTV.app'
end
