cask 'perforce' do
  version '17.2'
  sha256 '1a1f87f665b787731d61df96e95156577d1ff60ee0cb145415216cde13b0cfdb'

  url "https://cdist2.perforce.com/perforce/r#{version}/bin.darwin90x86_64/helix-versioning-engine.tgz"
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
