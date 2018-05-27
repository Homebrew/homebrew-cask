cask 'jira-cli' do
  version '0.1.0'
  sha256 '6ed63d49e4c35aa713bfe39bc1c03322da1fd441111a71102a106526f5cae416'

  # s3-us-west-2.amazonaws.com/jira-cli-releases was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/jira-cli-releases/jira.pkg'
  name 'jira-cli'
  homepage 'https://github.com/mattconzen/jira-cli'

  pkg 'jira.pkg'

  uninstall pkgutil: ['com.mattconzen.jiracli']
end
