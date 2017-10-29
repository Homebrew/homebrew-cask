cask 'camelcrusher' do
  version '1.0.1'
  sha256 '03a0fe8e76314020b7938b9c43376a047e5190e2b469c04d651975ede08323f2'

  # dropbox.com/s/3k0iy6v3pjxfoaa was verified as official when first introduced to the cask
  url 'https://dropbox.com/s/3k0iy6v3pjxfoaa/camelcrusher-win_mac.zip?dl=1'
  name 'Camel Crusher'
  homepage 'https://kvraudio.com/product/camelcrusher-by-camel-audio'

  container nested: "camelcrusher-win_mac/CamelCrusherMac-#{version.dots_to_hyphens}.dmg"

  pkg 'CamelCrusher.mpkg'

  uninstall pkgutil: %r{com.camelaudio.*.camelcrusher},
            rmdir:   '/Library/Application Support/Camel Audio'

  zap trash: '/Library/Application Support/Camel Audio'

  caveats do
    discontinued
  end
end
