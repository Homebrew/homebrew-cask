cask 'moira' do
  version '4.0.0.3-patch1'
  sha256 '230e5423ba41f278c55c716c1f81adef2591f32254acffc538ad8f3449eb6930'

  url "https://github.com/macathena/moira/archive/#{version}.zip"
  appcast 'https://github.com/macathena/moira/releases.atom',
          checkpoint: 'a1eb4ed6941e0d802be7db18e2a08bf2a09cd45b11795bc37b7d5625c6b47d42'
  name 'MIT Project Athena (Macathena) - Moira for Apple macOS/OS X'
  homepage 'https://github.com/macathena'
  license :unknown

  depends_on formula: ['hesiod', 'homebrew/dupes/krb5']

  binary "moira-#{version}/bin/blanche"
  # Provide a respectful chfn later in the form of a wrapper script
  binary "moira-#{version}/bin/chfn", target: 'chfn.moira'
  binary "moira-#{version}/bin/chpobox"
  # Provide a respectful chsh later in the form of a wrapper script
  binary "moira-#{version}/bin/chsh", target: 'chsh.moira'
  binary "moira-#{version}/bin/dcmmaint"
  binary "moira-#{version}/bin/eunice"
  binary "moira-#{version}/bin/listmaint"
  binary "moira-#{version}/bin/mailmaint"
  binary "moira-#{version}/bin/mitch"
  binary "moira-#{version}/bin/moira"
  binary "moira-#{version}/bin/mrcheck"
  binary "moira-#{version}/bin/mrtest"
  binary "moira-#{version}/bin/namespace"
  binary "moira-#{version}/bin/qy"
  binary "moira-#{version}/bin/stanley"
  binary "moira-#{version}/bin/stella"
  # Don't provide update_test at all - shouldn't this be in sbin?
  # binary "moira-#{version}/bin/update_test"
  binary "moira-#{version}/bin/usermaint"
  # link files for /usr/local/etc
  artifact "moira-#{version}/etc/moira.conf", target: '/usr/local/etc/moira.conf'
  artifact "moira-#{version}/etc/shells.moira", target: '/usr/local/etc/shells.moira'
  # link include/moira in /usr/local/include
  artifact "moira-#{version}/include/moira", target: '/usr/local/include/moira'
  # link files for /usr/local/lib
  artifact "moira-#{version}/lib/libmoira.0.0.0.dylib", target: '/usr/local/lib/libmoira.0.0.0.dylib'
  artifact "moira-#{version}/lib/libmoira.0.dylib", target: '/usr/local/lib/libmoira.0.dylib'
  artifact "moira-#{version}/lib/libmoira.a", target: '/usr/local/lib/libmoira.a'
  artifact "moira-#{version}/lib/libmoira.dylib", target: '/usr/local/lib/libmoira.dylib'
  artifact "moira-#{version}/lib/libmoira.la", target: '/usr/local/lib/libmoira.la'
  artifact "moira-#{version}/lib/libmrclient.0.0.0.dylib", target: '/usr/local/lib/libmrclient.0.0.0.dylib'
  artifact "moira-#{version}/lib/libmrclient.0.dylib", target: '/usr/local/lib/libmrclient.0.dylib'
  artifact "moira-#{version}/lib/libmrclient.a", target: '/usr/local/lib/libmrclient.a'
  artifact "moira-#{version}/lib/libmrclient.dylib", target: '/usr/local/lib/libmrclient.dylib'
  artifact "moira-#{version}/lib/libmrclient.la", target: '/usr/local/lib/libmrclient.la'
  # link files for /usr/local/share/man
  # man1
  artifact "moira-#{version}/man/man1/blanche.1", target: '/usr/local/share/man/man1/blanche.1'
  # chfn -> chfn.moira
  artifact "moira-#{version}/man/man1/chfn.1", target: '/usr/local/share/man/man1/chfn.moira.1'
  artifact "moira-#{version}/man/man1/chpobox.1", target: '/usr/local/share/man/man1/chpobox.1'
  # chsh -> chsh.moira
  artifact "moira-#{version}/man/man1/chsh.1", target: '/usr/local/share/man/man1/chsh.moira.1'
  artifact "moira-#{version}/man/man1/dcmmaint.1", target: '/usr/local/share/man/man1/dcmmaint.1'
  artifact "moira-#{version}/man/man1/eunice.1", target: '/usr/local/share/man/man1/eunice.1'
  artifact "moira-#{version}/man/man1/listmaint.1", target: '/usr/local/share/man/man1/listmaint.1'
  artifact "moira-#{version}/man/man1/mailmaint.1", target: '/usr/local/share/man/man1/mailmaint.1'
  artifact "moira-#{version}/man/man1/mitch.1", target: '/usr/local/share/man/man1/mitch.1'
  artifact "moira-#{version}/man/man1/moira.1", target: '/usr/local/share/man/man1/moira.1'
  artifact "moira-#{version}/man/man1/mrcheck.1", target: '/usr/local/share/man/man1/mrcheck.1'
  artifact "moira-#{version}/man/man1/namespace.1", target: '/usr/local/share/man/man1/namespace.1'
  artifact "moira-#{version}/man/man1/stanley.1", target: '/usr/local/share/man/man1/stanley.1'
  artifact "moira-#{version}/man/man1/stella.1", target: '/usr/local/share/man/man1/stella.1'
  artifact "moira-#{version}/man/man1/usermaint.1", target: '/usr/local/share/man/man1/usermaint.1'
  # man3
  artifact "moira-#{version}/man/man3/canonicalize_hostname.3", target: '/usr/local/share/man/man3/canonicalize_hostname.3'
  artifact "moira-#{version}/man/man3/format_filesys_type.3", target: '/usr/local/share/man/man3/format_filesys_type.3'
  artifact "moira-#{version}/man/man3/moira.3", target: '/usr/local/share/man/man3/moira.3'
  artifact "moira-#{version}/man/man3/mr_access.3", target: '/usr/local/share/man/man3/mr_access.3'
  artifact "moira-#{version}/man/man3/mr_auth.3", target: '/usr/local/share/man/man3/mr_auth.3'
  artifact "moira-#{version}/man/man3/mr_connect.3", target: '/usr/local/share/man/man3/mr_connect.3'
  artifact "moira-#{version}/man/man3/mr_disconnect.3", target: '/usr/local/share/man/man3/mr_disconnect.3'
  artifact "moira-#{version}/man/man3/mr_host.3", target: '/usr/local/share/man/man3/mr_host.3'
  artifact "moira-#{version}/man/man3/mr_motd.3", target: '/usr/local/share/man/man3/mr_motd.3'
  artifact "moira-#{version}/man/man3/mr_noop.3", target: '/usr/local/share/man/man3/mr_noop.3'
  artifact "moira-#{version}/man/man3/mr_query.3", target: '/usr/local/share/man/man3/mr_query.3'
  artifact "moira-#{version}/man/man3/parse_filesys_type.3", target: '/usr/local/share/man/man3/parse_filesys_type.3'
  artifact "moira-#{version}/man/man3/sq_create.3", target: '/usr/local/share/man/man3/sq_create.3'
  artifact "moira-#{version}/man/man3/sq_destroy.3", target: '/usr/local/share/man/man3/sq_destroy.3'
  artifact "moira-#{version}/man/man3/sq_empty.3", target: '/usr/local/share/man/man3/sq_empty.3'
  artifact "moira-#{version}/man/man3/sq_get_data.3", target: '/usr/local/share/man/man3/sq_get_data.3'
  artifact "moira-#{version}/man/man3/sq_remove_data.3", target: '/usr/local/share/man/man3/sq_remove_data.3'
  artifact "moira-#{version}/man/man3/sq_save_args.3", target: '/usr/local/share/man/man3/sq_save_args.3'
  artifact "moira-#{version}/man/man3/sq_save_data.3", target: '/usr/local/share/man/man3/sq_save_data.3'
  artifact "moira-#{version}/man/man3/sq_save_unique_data.3", target: '/usr/local/share/man/man3/sq_save_unique_data.3'
  artifact "moira-#{version}/man/man3/sq_save_unique_string.3", target: '/usr/local/share/man/man3/sq_save_unique_string.3'
  artifact "moira-#{version}/man/man3/strtrim.3", target: '/usr/local/share/man/man3/strtrim.3'
  # man8
  artifact "moira-#{version}/man/man8/dcm.8", target: '/usr/local/share/man/man8/dcm.8'
  artifact "moira-#{version}/man/man8/moirad.8", target: '/usr/local/share/man/man8/moirad.8'
  artifact "moira-#{version}/man/man8/mrtest.8", target: '/usr/local/share/man/man8/mrtest.8'
  artifact "moira-#{version}/man/man8/reg_svr.8", target: '/usr/local/share/man/man8/reg_svr.8'
  artifact "moira-#{version}/man/man8/setquota.8", target: '/usr/local/share/man/man8/setquota.8'
  artifact "moira-#{version}/man/man8/startdcm.8", target: '/usr/local/share/man/man8/startdcm.8'
  artifact "moira-#{version}/man/man8/startmoira.8", target: '/usr/local/share/man/man8/startmoira.8'
  artifact "moira-#{version}/man/man8/startreg.8", target: '/usr/local/share/man/man8/startreg.8'
  artifact "moira-#{version}/man/man8/update_server.8", target: '/usr/local/share/man/man8/update_server.8'

  caveats <<-EOS.undent
    You MUST use MIT Kerberos as opposed to Apple-provided Heimdal Kerberos.
    Use `brew link krb5 --force` after installation of homebrew/dupes/krb5.
  EOS
end
