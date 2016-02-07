cask 'powermate' do
  version '1.2.4,3.2015.08'
  sha256 '6fd755961bb5a486cb3ab9d47217f7877d4bb021134f32a3c32ceede3fd3cf3d'

  url "https://support.griffintechnology.com/wp-content/uploads/sites/#{version.after_comma.dots_to_slashes}/PowerMate_v#{version.before_comma}.zip"
  name 'Griffin Powermate'
  homepage 'https://support.griffintechnology.com/support/powermate/'
  license :gratis

  app 'PowerMate.app'
end
