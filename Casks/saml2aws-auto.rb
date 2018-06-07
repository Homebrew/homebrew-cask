cask 'saml2aws-auto' do
  version '1.2.1'
  sha256 '0ce46560f29a86cd0f9c32f080eb786f62f6669b3124af728f047c8e6cc8d3c7'

  url "https://github.com/Rukenshia/saml2aws-auto/releases/download/#{version}/saml2aws-auto-#{version}-x86_64-apple-darwin.tar.gz"
  name 'saml2aws-auto'
  homepage 'https://github.com/rukenshia/saml2aws-auto'

  appcast 'https://github.com/rukenshia/saml2aws-auto/releases.atom', checkpoint: 'eafe9894234f4c964f48261183b3824a723a05e6a473f52cbe866f022a86e4c0'

  artifact 'saml2aws-auto', target: '/usr/local/bin/saml2aws-auto'

end
