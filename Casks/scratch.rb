cask :v1 => 'scratch' do
  version :latest
  sha256 :no_check

  url 'https://scratch.mit.edu/scratchr2/static/sa/Scratch-435.dmg'
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2'

  uninstall :script => 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2'
end
