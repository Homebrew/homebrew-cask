cask :v1 => 'mbam' do
  version :latest
  url 'https://www.malwarebytes.org/mac-download/'

  name 'Malwarebytes Anti-Malware'
  homepage 'https://www.malwarebytes.org/antimalware/mac/'
  license :gratis

  app 'Malwarebytes Anti-Malware.app'
end
