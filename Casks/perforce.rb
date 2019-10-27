cask 'perforce' do
  version '19.1-1865205'
  sha256 '71ad48f8af851978016d52132dff28638c7d8dced2479ea0a1a04e73e74ac2c5'

  url "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1010x86_64/helix-core-server.tgz"
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
