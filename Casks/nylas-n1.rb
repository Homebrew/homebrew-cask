cask 'nylas-n1' do
  version '0.4.5-b0ec335'
  sha256 '50f81464cd4afa94c468cc74f94beb2c994eb6858280db804e82dac7af11ade5'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://edgehill.s3-us-west-2.amazonaws.com/#{version}/darwin/x64/N1.dmg"
  appcast 'https://edgehill.nylas.com/update-check?platform=darwin&arch=64',
          checkpoint: '32b6f1a4cac5bc966d108937d61d2335381ec862f9b1b1d5753a0e94e513a130'
  name 'Nylas N1'
  homepage 'https://www.nylas.com/n1'
  license :gpl

  auto_updates true

  app 'Nylas N1.app'
end
