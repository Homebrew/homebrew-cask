cask :v1 => 'otto' do
  version '0.1.0'
  sha256 'a03ad303f85eac39dc913a928aedbaf07ca01fd7455b1638eafb7a0de2f03644'

  url "https://dl.bintray.com/mitchellh/otto/otto_#{version}_darwin_amd64.zip"
  name 'Otto'
  homepage 'https://ottoproject.io'
  license :mpl

  binary 'otto'
end
