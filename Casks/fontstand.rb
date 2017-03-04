cask 'fontstand' do
  version :latest
  sha256 :no_check

  url 'https://fontstand.com/application/download',
      user_agent: :fake
  name 'Fontstand'
  homepage 'https://fontstand.com/'

  app 'Fontstand.app'

  postflight do
    suppress_move_to_applications
  end
end
