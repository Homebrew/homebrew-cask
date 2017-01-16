cask 'oscilloscope' do
  version '1.0.7'
  sha256 '7da3fcbb84fcdb88c1eb09074d8af2028b9069487001dcf5f3d1f1b9c349b66c'

  url "https://github.com/kritzikratzi/Oscilloscope/releases/download/#{version}/oscilloscope-#{version}-osx.zip"
  appcast 'https://github.com/kritzikratzi/Oscilloscope/releases.atom',
          checkpoint: '5d371197fb6937c8ba01fbec0bb2438e9ac3aeb0b07dd12eb5b6dec6f9991855'
  name 'Oscilloscope'
  homepage 'https://github.com/kritzikratzi/Oscilloscope'

  app 'Oscilloscope/Oscilloscope.app'
end
