cask 'puush' do
  version '66'
  sha256 'd61f0e1f56779af5b10b218ff847e92913828a1e2a4f33cf34d96e9dc3d5ceaf'

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax',
          checkpoint: '53b2315d38e4adfcf61f436072d4304d902c58b8628db6ba7df41bc9b5ec62aa'
  name 'puush'
  homepage 'https://puush.me/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'puush.app'
end
