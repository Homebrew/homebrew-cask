cask 'devrantio' do
    version '1.0.2'
    sha256 '440a39b8e16cde4e8fc55eb387526bc74c5176dcad1c80820a1582b350ac870e'
    
    url "https://github.com/Meadowcottage/devRant/releases/download/#{version}/devRant.io-darwin-x64.zip"
    appcast 'https://github.com/Meadowcottage/devRant/releases.atom',
    checkpoint: '1292b2981cd6f3e90fc0a5b0defaffc373113dda3455c0b8b02e6aceaeaff0a1'
    name 'devrantio'
    homepage 'https://devrant.io/'
    license :gpl
    
    app 'devRant.io-darwin-x64/devrant.io.app'
end