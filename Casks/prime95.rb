cask 'prime95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '29.4.b7'
  sha256 '2fdc4a7b2385002a01023a517bef3c0a86e978edd48c1e1e7d156e0123fae372'

  url "https://www.mersenne.org/ftp_root/gimps/p95v#{version.no_dots}.MacOSX.zip"
  name 'Prime95'
  homepage 'https://www.mersenne.org/'

  app 'Prime95.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mersenne.prime95.sfl*'
end
