cask 'awscli' do
  version '2.0.0'
  sha256 'a99c26cd2b5655970db91259a247f585aea32cfb7347e1a28a25b6f6484b16dc'

  # awscli.amazonaws.com was verified as official when first introduced to the cask
  url "https://awscli.amazonaws.com/AWSCLIV#{version.major}.pkg"
  name 'AWS Command Line Interface'
  homepage 'https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html'

  depends_on macos: '>= :high_sierra'

  pkg "AWSCLIV#{version.major}.pkg"

  uninstall pkgutil: 'com.amazon.aws.cli.*'

  caveats do
    files_in_usr_local
  end
end
