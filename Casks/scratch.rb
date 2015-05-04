cask :v1 => 'scratch' do
  version '435'
  sha256 'f1e35c40b0a97e6e88a5e5b9185643d19099a9245d6a3dd724ab3ff2040077b9'

  url 'https://scratch.mit.edu/scratchr2/static/sa/Scratch-435.dmg'
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2',
            :args   => %w[-silent],
            :sudo   => true

  uninstall :delete => '/Applications/Scratch 2.app'

  depends_on :cask => 'adobe-air'
end
