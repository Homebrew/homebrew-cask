cask 'prime95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '29.3'
  sha256 '2ded6c91ba068ffae48219e441aa6a4bafb50d727df89dc04370fb71f47b809a'

  url "https://www.mersenne.org/ftp_root/gimps/p95v#{version.no_dots}.MacOSX.zip"
  name 'Prime95'
  homepage 'https://www.mersenne.org/'

  app 'Prime95.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mersenne.prime95.sfl*'
end
