cask 'renamer' do
  version '4.3.3'
  sha256 'cd4308d8555ad7e17851c45a71904b5695e2467f9ad499d64de36a9be0f522b0'

  # creativebe.com is the official download host per the vendor homepage
  url 'http://creativebe.com/download/renamer'
  appcast 'https://storage.googleapis.com/incrediblebee/appcasts/renamer.xml',
          checkpoint: '01b82d78af9bb61ddcec8bd09da3bd29464b678b84ec61c16da4692b868cf732'
  name 'Renamer'
  homepage 'http://renamer.com'
  license :commercial

  app 'Renamer.app'
end
