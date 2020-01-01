cask 'deeper' do
  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version == :mavericks
    version '1.9.1'
    sha256 'a601cee489825685b28fcf71e5b3801ec45ff73d5a015aa9948eb8641616383a'
  elsif MacOS.version == :yosemite
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
    version '2.5.2'
    sha256 '6ec11489e1d2b26caeb2fe7150ea885fca5e827c1d67103229786410a36c5a1d'
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/Deeper.dmg"
  appcast 'https://www.titanium-software.fr/en/release_deeper.html'
  name 'Deeper'
  homepage 'https://www.titanium-software.fr/en/deeper.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                      :catalina,
                    ]

  app 'Deeper.app'
end
