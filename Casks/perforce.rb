cask 'perforce' do
  version '19.2,1927395'
  sha256 'd6e3d0dc841cdd5f2516a525f57de6d4661b40016480f7d05a29651e2f6db9a2'

  url "https://cdist2.perforce.com/perforce/r#{version.before_comma}/bin.macosx1010x86_64/helix-core-server.tgz"
  name 'Perforce Helix Versioning Engine'
  homepage 'https://www.perforce.com/'

  binary 'p4'
  binary 'p4broker'
  binary 'p4d'
  binary 'p4p'

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
