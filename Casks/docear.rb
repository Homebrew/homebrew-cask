cask 'docear' do
  version '1.2.0.0_stable_build291'
  sha256 '64b22b3e5529daff2fb9d929bdde5d6cfda364a6aa1acbbc80b249ef028f98df'

  url 'https://docear.org/downloads/docear_macos.zip'
  name 'Docear'
  homepage 'https://docear.org'

  app "docear_macos/docear-#{version}/Docear.app"
end
