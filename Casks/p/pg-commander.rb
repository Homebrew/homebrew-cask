cask "pg-commander" do
  version "1.5.9"
  sha256 "8c844dec96e459bd047bd60bc0daae2ee50f5af9594b506b627ff1ecc5395fff"

  url "https://eggerapps-downloads.s3.amazonaws.com/pgcommander-#{version}.zip",
      verified: "eggerapps-downloads.s3.amazonaws.com/"
  name "PG Commander"
  desc "PostgreSQL client"
  homepage "https://eggerapps.at/pgcommander/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "PG Commander.app"
end
