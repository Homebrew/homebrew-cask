cask 'cloud-sql-proxy' do
  version '1.13'
  sha256 '61551aa2cf4a12baf8884cb3d1f08dfc95c2f03b04edb4bd232f31736a380589'

  # storage.googleapis.com was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/cloudsql-proxy/v1.13/cloud_sql_proxy.darwin.amd64'
  appcast 'https://github.com/GoogleCloudPlatform/cloudsql-proxy/releases.atom'
  name 'Cloud SQL Proxy'
  homepage 'https://github.com/GoogleCloudPlatform/cloudsql-proxy'

  binary 'cloud_sql_proxy.darwin.amd64', target: 'cloud_sql_proxy'
end
