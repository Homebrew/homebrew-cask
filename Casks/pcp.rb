cask 'pcp' do
  version '3.12.0-1'
  sha256 'dcbfb5a17dd723dcc3b3345cf5ab939cc132a8fdda83e1661f4598cc7a2be72b'

  # bintray.com/pcp/macosx was verified as official when first introduced to the cask
  url "https://bintray.com/pcp/macosx/download_file?file_path=pcp-#{version}.dmg"
  name 'Performance Co-Pilot (PCP)'
  homepage 'http://pcp.io/'

  pkg "pcp-#{version}.pkg", allow_untrusted: true

  uninstall quit:      'io.pcp.pmchart',
            pkgutil:   'com.sgi.pkg.pcp',
            delete:    [
                         '/Applications/pmchart.app',
                         '/usr/local/include/pcp/',
                         # individual dylibs that pcp installs
                         '/usr/local/lib/liboath.0.dylib',
                         '/usr/local/lib/libpcp.3.dylib',
                         '/usr/local/lib/libpcp_gui.2.dylib',
                         '/usr/local/lib/libpcp_import.1.dylib',
                         '/usr/local/lib/libpcp_mmv.1.dylib',
                         '/usr/local/lib/libpcp_pmda.3.dylib',
                         '/usr/local/lib/libpcp_trace.2.dylib',
                         '/usr/local/lib/libpcp.a',
                         '/usr/local/lib/libpcp_gui.a',
                         '/usr/local/lib/libpcp_import.a',
                         '/usr/local/lib/libpcp_mmv.a',
                         '/usr/local/lib/libpcp_pmda.a',
                         '/usr/local/lib/libpcp_trace.a',
                         '/usr/local/lib/libpcp_web.a',
                         # Symlinks for the above
                         '/usr/local/lib/libpcp.dylib',
                         '/usr/local/lib/libpcp_gui.dylib',
                         '/usr/local/lib/libpcp_import.dylib',
                         '/usr/local/lib/libpcp_mmv.dylib',
                         '/usr/local/lib/libpcp_pmda.dylib',
                         '/usr/local/lib/libpcp_trace.dylib',
                         '/Library/StartupItems/pcp/pcp',
                         '/Library/StartupItems/pcp/pmcd',
                         '/Library/StartupItems/pcp/pmie',
                         '/Library/StartupItems/pcp/pmlogger',
                         '/Library/StartupItems/pcp/pmproxy',
                         '/Library/StartupItems/pcp/StartupParameters.plist',
                         '/Library/StartupItems/pcp/Resources/English.lproj',
                         '/Library/StartupItems/pcp/Resources',
                         '/Library/StartupItems/pcp/',
                         '/usr/local/bin/pmafm',
                         '/usr/local/bin/pmchart',
                         '/usr/local/bin/pmclient',
                         '/usr/local/bin/pmclient_fg',
                         '/usr/local/bin/pmcollectl',
                         '/usr/local/bin/pmconfirm',
                         '/usr/local/bin/pmdate',
                         '/usr/local/bin/pmdbg',
                         '/usr/local/bin/pmdiff',
                         '/usr/local/bin/pmdumplog',
                         '/usr/local/bin/pmdumptext',
                         '/usr/local/bin/pmerr',
                         '/usr/local/bin/pmevent',
                         '/usr/local/bin/pmfind',
                         '/usr/local/bin/pmgenmap',
                         '/usr/local/bin/pmie',
                         '/usr/local/bin/pmie2col',
                         '/usr/local/bin/pmieconf',
                         '/usr/local/bin/pminfo',
                         '/usr/local/bin/pmiostat',
                         '/usr/local/bin/pmlc',
                         '/usr/local/bin/pmlogcheck',
                         '/usr/local/bin/pmlogconf',
                         '/usr/local/bin/pmlogextract',
                         '/usr/local/bin/pmlogger',
                         '/usr/local/bin/pmloglabel',
                         '/usr/local/bin/pmlogmv',
                         '/usr/local/bin/pmlogsummary',
                         '/usr/local/bin/pmmessage',
                         '/usr/local/bin/pmprobe',
                         '/usr/local/bin/pmpython',
                         '/usr/local/bin/pmquery',
                         '/usr/local/bin/pmrep',
                         '/usr/local/bin/pmsocks',
                         '/usr/local/bin/pmstat',
                         '/usr/local/bin/pmstore',
                         '/usr/local/bin/pmtime',
                         '/usr/local/bin/pmtrace',
                         '/usr/local/bin/pmval',
                       ],
            launchctl: 'io.pcp'

  zap trash: '~/.pcp'

  caveats <<~EOS
    During installation 2 windows will pop up asking your permission for access for network ports for `pmlogger` and `pmcd`.  This is expected.

    System Integrity Protection may intefere with this install - If the installer takes more than a minute to complete, you may need to reboot.
  EOS
end
