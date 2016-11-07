cask 'preform' do
  version '2.9.1,370'
  sha256 '62c008c9529f396ae4ce35affd14316f45209e927eec6fad5b32a31b8881bc7e'

  # s3.amazonaws.com/FormlabsReleases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release_origin_release_#{version.before_comma}_build_#{version.after_comma}.dmg"
  name 'PreForm'
  homepage 'https://formlabs.com/products/preform/'

  app 'PreForm.app'
end
