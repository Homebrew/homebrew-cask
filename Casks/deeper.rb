cask 'deeper' do
  macos_release = MacOS.version.to_s.delete('.')

  if MacOS.version == :snow_leopard
    version '1.3.4'
    sha256 '529279266457186a8583232d83dabc944c08f6837f62875e300a4ea206ce98e8'
  elsif MacOS.version == :lion
    version '1.4.9'
    sha256 '710edc7c8e75a3b4810810ead3d4dc230504eef1fca404ddd96e974ae4b6a96a'
  elsif MacOS.version == :mountain_lion
    version '1.7.1'
    sha256 '2a7227942ef2671987a87de17b304d4f021f83ed7f772a47ed24a418bb5e829c'
  elsif MacOS.version == :mavericks
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
  else
    version '2.3.5'
    sha256 '8a8a6dec420ec7dd04eedec6400b5a2b40f4db60da628e817b61322761b91f08'
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/Deeper.dmg"
  appcast 'https://www.titanium-software.fr/en/release_deeper.html'
  name 'Deeper'
  homepage 'https://www.titanium-software.fr/en/deeper.html'

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
                      :snow_leopard,
                      :lion,
                      :mountain_lion,
                      :mavericks,
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                      :mojave,
                    ]

  app 'Deeper.app'
end
