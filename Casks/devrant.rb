cask 'devrant' do
    version '1.0.3'
    sha256 '9aea3cdd3f6cc89012baa0dfd2f82b213557e0e6d667e6a6cee594f8b3d50740'
    
    url "https://github.com/Meadowcottage/devRant/releases/download/#{version}/devRant-#{version}.dmg"
    appcast 'https://github.com/Meadowcottage/devRant/releases.atom',
            checkpoint: '1292b2981cd6f3e90fc0a5b0defaffc373113dda3455c0b8b02e6aceaeaff0a1'
    name 'devrantio'
    homepage 'https://devrant.io/'
    license :gpl
    
    app 'devRant.io-darwin-x64/devrant.io.app'
end