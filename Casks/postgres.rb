cask 'postgres' do
  version '9.6.1.1'
  sha256 '4924b956c30d1e3191277dcd72834dc43fc76f74c1cae5be18729af771b0da45'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '84cfa62ebeaaa4cb156d4d89bcb392020c138f9838f29816685f563cb2b5454e'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  app 'Postgres.app'
end
