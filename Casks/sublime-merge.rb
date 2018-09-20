cask 'sublime-merge' do
  version '1055'
  sha256 '9948229effa51b41794aad4521d32d3058191baf85642a3233b82c5b95621430'

  # download.sublimetext.com was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/'

  app 'Sublime Merge.app'
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"
end
