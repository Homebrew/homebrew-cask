class Bs2bAu < Cask
  version ''
  homepage 'https://github.com/MagisterLeoninus/bs2b-au'
  sha256 'c202e794dd24708b870f179e71ea2e56d2374702a95fd1f7e9563e768603cd4f'
  url 'https://github.com/downloads/MagisterLeoninus/bs2b-au/bs2b-au.component.zip'
  artifact 'bs2b-au.component', :target => '../Library/Audio/Plug-Ins/Components/bs2b-au.component'
  caveats 'This installs bs2b-au.component to your ~/Library/Audio/Plug-Ins/Components/'
end