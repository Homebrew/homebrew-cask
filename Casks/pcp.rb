cask 'pcp' do
  version '3.11.4-1'
  sha256 '23ab95f60c127601e7b995525523b2a8762eab224fdaa12c8bffc39b3de3fc34'

  # bintray.com/pcp/macosx/ was verified as official when first introduced to the cask
  url "https://bintray.com/pcp/macosx/download_file?file_path=pcp-#{version}.dmg"
  name 'Performance Co-Pilot (PCP)'
  homepage 'http://pcp.io/'

  pkg "pcp-#{version}.pkg", allow_untrusted: true

  # TODO: should do a proper install - see https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/uninstall.md
  zap delete: ['/Applications/pmchart.app']

  caveats "
    * During installation 2 windows will pop up asking your permission for access for network ports for `pmlogger` and `pmcd`.  This is expected.
    * System Integrity Protection _may_ intefere with this install - If the installer takes more than a minute to complete, you might want to reboot..
  "
end
