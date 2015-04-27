cask :v1 => 'lytro-desktop' do
  version '4.2.1'
  sha256 '5ebe2cdd0b80749f3ad97fd319ab6c4cea4045f6705d10ce28b191935bbf561b'

  # amazonaws.com is the official download host per the appcast feed
  url 'https://s3.amazonaws.com/lytro-distro/lytro-150408.69.dmg'
  appcast 'https://pictures.lytro.com/support/software_update',
    :sha256 => 'e54d512a31f7c221da16d2af9cf4eebef353bb47ca07a6811c4bfaeaae4dddf1'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'
  license :gratis

  app 'Lytro Desktop.app'
end
