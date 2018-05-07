cask 'monal' do
  version '2.1b3'
  sha256 '8185f47eda658b15a1d397b9a556ed6cdee92145950e11655fbaee89c4991bc1'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          checkpoint: '87d3f3fe8a27382f90b9b6f8b914a1297b259cf80f089bcf42d2a0d41b02d90e'
  name 'Monal'
  homepage 'https://monal.im/'

  app 'Monal.app'
end
