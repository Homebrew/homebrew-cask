cask 'deeper' do
  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version == :yosemite
    version '2.0.4'
    sha256 '70a8ae37e6a62541a03b1b144ff92bac38585ce936b1acc12ce484416db13b8f'
  elsif MacOS.version == :el_capitan
    version '2.1.4'
    sha256 '3dc9607644872da14a0b6f20722e36d0cb6cb7ab2528f86de1cf059086cf2848'
  elsif MacOS.version == :sierra
    version '2.2.3'
    sha256 '33fee21b65279e4459b6469dbc68f0c6df91663ed26d6b62042b21883efda0ed'
  elsif MacOS.version == :high_sierra
    version '2.3.3'
    sha256 '08ac5820428bcce74548786e8fda947edfaa31cf4a822d5c443835e73a11dd3b'
  elsif MacOS.version == :mojave
    version '2.4.8'
    sha256 '13dbe7bd680963aca91c40a4fd1e16648b63538f3213692db22dd91a3e3f2c89'
  else
    version '2.5.8'
    sha256 '0139ceb7b376df670f504bce74031ab4047070817c4d2168a6cc0a92cb946b82'
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/Deeper.dmg"
  appcast 'https://www.titanium-software.fr/en/release_deeper.html'
  name 'Deeper'
  homepage 'https://www.titanium-software.fr/en/deeper.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                      :catalina,
                    ]

  app 'Deeper.app'
end
